% Load the Altavilla et al. (2019) Monetary Policy Database downloadable from
% https://www.ecb.europa.eu/pub/pdf/annex/Dataset_EA-MPD.xlsx

% use the Monetary Event Window
fname = "Dataset_EA-MPD.xlsx";
opts = detectImportOptions(fname, Sheet="Monetary Event Window");
opts = setvartype(opts, opts.VariableNames(2:end), "double");
tab = readtable(fname, opts);
tab.date.Format = "uuuu-MM-dd";
fprintf('Data from %s to %s, T=%d\n', tab.date(1), tab.date(end), size(tab,1))

% Select the sample
isample = true(size(tab,1),1);
% drop joint Fed and ECB announcements
isample(tab.date == datetime('13-Sep-2001')) = 0; % joint announcement of USD swap
isample(tab.date == datetime('17-Sep-2001')) = 0; % joint cut at 17:30
isample(tab.date == datetime('08-Oct-2008')) = 0; % joint cut

tab = tab(isample,:);
fprintf('Data from %s to %s, T=%d\n', tab.date(1), tab.date(end), size(tab,1))

