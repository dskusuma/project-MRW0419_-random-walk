%% Set Parameter Simulasi 
titik_awal = zeros(1, dimensi);
jumlah_step = 1000;
steps = zeros(jumlah_step, dimensi);
choice = -1:1;

%% Simulasi
for i = 1:jumlah_step
    step_direction = choice(randperm(numel(choice),2));
    steps(i, :) = step_direction;
end

jalur = [titik_awal; steps];
jalur = cumsum(jalur);
titik_akhir = jalur(end,:);

%% Plotting
figure;
hold on;
scatter(titik_awal(1), titik_awal(2), 'filled', 'k'); % Titik Akhir
lp = plot(jalur(:,1),jalur(:,2),'r', 'LineWidth', 0.5); lp.Color(4) = 0.3;
scatter(titik_akhir(1), titik_akhir(2), 'filled', 'b'); % Titik Awal