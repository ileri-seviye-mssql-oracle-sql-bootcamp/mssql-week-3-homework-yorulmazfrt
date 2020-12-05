select * from tblUrun;
select * from tblSiparis;
select * from tblKullanici; 
select * from tblSiparisDurum;

select urunAd,urunKod,listeFiyat fiyat from dbo.tblUrun;

select max(tblSiparis.toplam) from tblSiparis
inner join tblKullanici
on tblSiparis.kullaniciKod = tblKullanici.kullaniciKod;


select m.meslekKod  from tblKullanici as k
left join tblSiparis as s on s.kullaniciKod=k.kullaniciKod
inner join tblMeslek m on k.meslekKod = m.meslekKod 
where s.kullaniciKod is null;

select * from tblSiparis where siparisTarih between '01.02.2007' and '05.03.2014';


select * from tblSiparis s
inner join tblSiparisDurum sd on s.siparisDurumKod=sd.siparisDurumKod
where sd.aciklama = 'İptal Edildi';


select max(s.toplam) from tblKullanici k
inner join tblSiparis s on s.kullaniciKod = k.kullaniciKod
where kullaniciAd = 'A%' and kullaniciAd='%ak%';