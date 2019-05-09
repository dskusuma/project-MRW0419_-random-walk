%% Set Parameter Simulasi 
dimensi = 2;
titik_awal = zeros(1, dimensi);
jumlah_step = 1000;
steps = zeros(jumlah_step, dimensi);
choice = -1:1;

%% Dapatkan hasil simulasi
[ jalur, titik_akhir ] = random_walk2D( titik_awal, jumlah_step, choice, dimensi );

%% Plotting
figure;
hold on;
scatter(titik_awal(1), titik_awal(2), 'filled', 'k'); % Titik Awal

for i = 1:jumlah_step
%     scatter( jalur(i,1), jalur(i,2),'r', 'LineWidth', 0.5); lp.Color(4) = 0.3;
    plot( jalur(1:i,1), jalur(1:i,2),'r', 'LineWidth', 0.5); lp.Color(4) = 0.3;
    axis equal;
    pause(0.5);
end

scatter(titik_akhir(1), titik_akhir(2), 'filled', 'b'); % Titik Awal