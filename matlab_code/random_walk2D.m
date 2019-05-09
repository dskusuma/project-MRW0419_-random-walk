function [ jalur, titik_akhir ] = random_walk2D( titik_awal, ...
                                                 jumlah_step, ...
                                                 kemungkinan, dimensi )

langkah = zeros(jumlah_step, dimensi); % alokasi memori

for i = 1:jumlah_step
    arah_langkah = kemungkinan(randperm(numel(kemungkinan),2));
    langkah(i, :) = arah_langkah;
end

jalur = [titik_awal; langkah];
jalur=cumsum(jalur); % cumulative sum
titik_akhir = jalur(end, :);

end

