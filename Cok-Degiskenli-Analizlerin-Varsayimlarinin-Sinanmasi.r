# Normallik Varsayımı

# Tek Değişken Normalik Varsayımı

> install.packages("stats") # Stats paketini indirme
> library(stats) # Stats paketini kütüphaneye yükleme

# Shapiro - Wilks Testi
> shapiro.test(Veri_Seti_Adi$Degisken_Adi) 

# Kolmogrov - Smirnov Testi
> ks.test(Veri_Seti_Adı$Degisken_Adi, pnorm) 

# Çok Değişkenli Normallik Varsayımı

> install.packages("MVN") # MVN paketini indirme
> library(MVN) # MVN paketini kütüphaneye yükleme

# Mardia’s Çoklu Normallik Testi
mvn(Veri_Seti_Adı,mvnTest = "mardia")

# Hz Çoklu Normallik Testi
mvn(Veri_Seti_Adı,mvnTest = "hz")

# Varyans Kovaryans Matrisinin Eşitliği

> install.packages("stats") # stats paketini indirme
> library(stats) # stats paketini kütüphaneye yükleme

# Bartlett Testi
> bartlett.test(Veri_Seti_Adi$Metrik_Degisken_Adi, Veri_Seti_Adi$Kategorik_Degisken_Adi)


> install.packages("heplots") # Heplots paketini indirme
> library(heplots) # Heplots paketini kütüphaneye yükleme

# Box-M Testi
> boxM(Veri_Seti_Adi[, 1:4], Veri_Seti_Adi[, "Kategorik_Değişkenin_Adi"])

# Örneklem Büyüklüğü ve Korelasyon

> install.packages("psych")     # Psych paketini indirme
> library(Psych) # Psych paketini kütüphaneye yükleme

# Korelasyon Matrisi
> cor_matrix = cor(Veri_Seti_Adi)

# Bartlett Küresellik Testi
> cortest.bartlett(cor_matrix, n = nrow(Veri_Seti_Adi))

# KMO Değeri
> KMO(Veri_Seti_Adi)

# Çoklu Doğrusal Bağıntı

> install.packages("car") # car paketini indirme   
> library(car) # Car paketini kütüphaneye yükleme

# VIF değerinin hesaplanması
> vif(lm(Bagimli_Degisken_Adi ~ 1_Bagimsiz_Degisken_Adi + 2_Bagimsiz_Degisken_Adi, data=Veri_Seti_Adi))


# Örnek Çalışma