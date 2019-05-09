function [ jalur, titik_akhir ] = random_walk2D( titik_awal, ...
                                                 jumlah_step, ...
                                                 choice, dimensi )

steps = zeros(jumlah_step, dimensi);

for i = 1:jumlah_step
    step_direction = choice(randperm(numel(choice),2));
    steps(i, :) = step_direction;
end

jalur = [titik_awal; steps];
jalur=cumsum(jalur);
titik_akhir = jalur(end, :);

end

