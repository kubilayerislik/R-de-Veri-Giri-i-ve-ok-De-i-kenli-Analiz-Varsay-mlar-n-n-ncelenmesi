# RStudio'yu Yükleme
> 2 + 3 # '+' işaretinin öncesindeki ve sonrasındaki boşluklar isteğe bağlıdır.

> 2 * 3 # 2 çarpı 3
6

> sqrt(36) # 36’nın karekökü
6

> log10(100) # 100’ün 10 tabanına göre logaritması
2

> 10 / 3 # 10 bölü 3
3.3

> 10 %/% 3 # 10’un 3’e bölümünün tam kısmı
3

> 10 %% 3 # 10’un 3’e bölümünden kalan
1

# Atama Operatörü
>	a <- 10 # “a”ya 10 değerini ata
>	a = 10 # “a”ya 10 değerini ata
>	10 -> a # “a”ya 10 değerini ata
>	10 = a # Yanlış! Bu, "a"yı 10'a atamaya çalışacaktır

# Sınıflar veya Veri Türleri
>	class(a)  # numerik (sayısal)

>	a <- as.character(a)
>	print(a) # a’ya atanan değerini yazdırır
>	class(a) # karakter

# R Paket Kurma
>	install.packages("car") # “car” paketini yükleme
>	library(car) # 'car' paketini başlatma (çalıştır-çağır)
>	library() # kurulu tüm paketlerin listelenmesi
>	library(help=car) # 'car' paketi hakkında yardım alma

# Yardım Alma

>	help(merge) # 'merge' paketi için yardım alma
>	?merge # kurulu paketlerde “merge” ile ilgili yardım alma
>	??merge # kurulu olmayan paketlerde “merge” ile ilgili yardım alma
>	example(merge) # “merge” kodu ile ilgili örnek yardımı alma

# Çalışma Klasörü Tanımlama

>	getwd() # Tanımlanmış çalışma klasörünü gösterme
>	setwd(deneme) # Daha önce oluşturulmuş “deneme” klasörünü çalışma klasörünü yapma

# R'de Verileri İçe ve Dışa Aktarma

>	myData <- read.table("c:/myInputData.txt", header = FALSE, sep="|", colClasses=c("integer","character","numeric") # "|" ile ayrılmış “myData.txt” dosyasını içe aktarma
>	myData <- read.csv("c:/myInputData.csv", header=FALSE) # “read.csv” dosyasını içe aktarma
>	write.csv(rDataFrame, "c:/output.csv") # “output.csv” dosyası olarak dışa aktarma

# Konsoldaki Nesneleri Görüntüleme ve Silme

>	a <- 10
>	b <- 20
>	ls()  # global ortamdaki nesneleri listeleme
>	rm(a)  # “a” nesnesini silme
>	rm(list = ls())  # dikkat: global ortamdaki tüm nesneleri silme
>	gc()  # sistem belleğini boşaltma

# Bir vektör Oluşturma

>	vec1 <- c(10, 20, 15, 40)  # numerik vektör
>	vec2 <- c("a", "b", "c", NA)  # karakter vektör
>	vec3 <- c(TRUE, FALSE, TRUE, TRUE)  # mantıksal vektör
>	vec4 <- gl(4, 1, 4, label = c("l1", "l2", "l3", "l4"))  # 4 düzeyli faktör

# Bir vektörün Öğelerine Başvurma

>	length(vec1) # vec1 vektörü uzunluğunu görüntüleme
4
>	print(vec1[1] )# vec1 vektörünün 1’inci indeks değerine sahip elemanını görüntüleme
10
>	print(vec1[1:3]) # vec1 vektörünün 1, 2, ve 3’üncü indeks değerine sahip elemanlarını görüntüleme
10, 20, 15

# Vektörlerden Alt Küme Oluşturma

>	logic1 <- vec1 < 15  # vec1 vektöründeki eleman değerleri 15’den küçükse TRUE değilse FALSE elemanlarından oluşan logic1 adlı  vektörü oluştur.
>	vec1[logic1]  # logic1 vektöründe “TRUE” olan vec1 vektörü elemanları alt kümeye alınır (logic1 vektöründeki “TRUE” elemanın vec1 vektöründeki elemanı 10’dur). 
>	vec1[1:3]  # 1, 2  ve 3 indeks değerine sahip vec1 vektör elemanlarını görüntüleme
>	vec1[c(1,3)]  # 1 ve 3 indeks değerine sahip vec 1 vektörü elemanlarını görüntüleme
>	vec1[-1]  # İndeks değeri 1 olan elamanın dışındaki vec1 elemanlarını görüntüleme

# Vektör Değerlerini Sıralama

>	sort(vec1)  # vec1 vektörünü artan düzende sıralama
>	sort(vec1, decreasing = TRUE)  # vec1 vektörünü azalan düzende sıralama

>	vec1[order(vec1)] # artan düzende sıralama
>	vec1[rev(order(vec1))] # azalan düzende sıralama

# Vektör Dizileri ve Tekrarlar Oluşturma

>	seq(1, 10, by = 2)  # 1 dahil, 1 değerine 2 ekleyerek 10 kadar olan sayıları görüntüleme
>	seq(1, 10, length=25)  # 1 ve 10 dahil uzunluğu 25 öğeden oluşan vektör değerlerini görüntüleme
>	rep(1, 5)  # 1 değerini 5 kez görüntüleme
>	rep(1:3, 5)  # 1, 2, 3 değerlerinden oluşan diziyi 5 kez görüntüleme
>	rep(1:3, each=5)  # 1, 2, 3 değerlerinin her birini 5 kez görüntüleme

# Vektörlerde Kayıp Verileri Belirleme

>	vec2 <- c("a", "b", "c", NA)  # karakter vektörü
>	is.na(vec2)  # vec2 vektöründe kayıp veri olduğu için “TRUE” görüntülenir
>	!is.na(vec2)  # kayıp veri için “FALSE” görüntülenir
>	vec2[!is.na(vec2)]  # vec2 vektöründeki eksik olmayan verileri görüntüleme

# Vektörlerden Örneklem Çekme

>	sample(vec1)  # vec1 vektöründeki tüm elemanları rasgele örnekleme ile çek
>	sample(vec1, 3)  # vec1 vektöründen iadesiz olarak rasgele 3 eleman çekme
>	sample(vec1, 10, replace=T)  # vec1 vektöründen iadeli olarak rasgele 10 eleman çekme

# Veri Çerçevesi Oluşturma, Satırlama ve Sütunlara Erişme

>	myDf1 <- data.frame(vec1, vec2)  # vec1 ve vec2 vektörlerinden oluşan myDf1 adımda iki sütunlu veri çerçevesi oluşturma
>	myDf2 <- data.frame(vec1, vec3, vec4) # vec1, vec3  ve vec4 vektörlerinden oluşan myDf2 adımda üç sütunlu veri çerçevesi oluşturma
>	myDf3 <- data.frame(vec1, vec2, vec3) # vec1, vec2  ve vec3 vektörlerinden oluşan myDf2 adımda üç sütunlu veri çerçevesi oluşturma

# Yerleşik Veri Kümeleri ve Temel İşlemler

>	library(datasets) # dataset paketini çalıştırma
>	library(help=datasets) # “datasets” paketi ile ilgili bilgi alma

>	class(airquality)  # “airquality”nin class’ını (sınıfını) öğrenme
>	sapply(airquality, class)  # “airquality” veri çerçevesinde yer alan tüm sütunların (sütunlarda yer alan değişkenlerin)  sınıfını öğrenme

>	str(airquality)  # “airquality” veri çerçevesinin yapısını öğrenme (kaç gözlem var, kaç değişken var vs.)
>	summary(airquality)  # “airquality” veri çerçevesinde yer alan değişkenlerin kartil, medyan, aritmetik ortalama, minimum ve maksimum değerlerini öğrenme
>	head(airquality)  # “airquality” veri çerçevesinde yer alan değişkenlerin ilk 6 gözlemini gösterme
>	fix(airquality)  # “airquality” veri çerçevesini spreadsheet biçiminde görüntüleme
>	rownames(airquality)  # “airquality” veri çerçevesindeki satır adlarını görüntüleme
>	colnames(airquality)  # “airquality” veri çerçevesindeki sütun (değişken) adlarını görüntüleme
>	nrow(airquality)  # “airquality” veri çerçevesindeki satır sayısını görüntüleme
>	ncol(airquality)  # “airquality” veri çerçevesindeki sütun sayısını görüntüleme

# Veri Çerçevelerini Birleştirme

>	cbind(myDf1, myDf2)  # “myDf1” ve “myDf2” veri çerçevesindeki sütunları aynı satır numarasına göre birleştirme
>	rbind(myDf1, myDf1)  # “myDf1” ve “myDf1” veri çerçevesindeki satırları sütun numarasına göre birleştirme

>	subset(airquality, Day == 1, select = -Temp)  # Temp değişkeni hariç tutulduğunda Gün değişkeninin 1 olduğu verileri görüntüleme
>	airquality[which(airquality$Day==1), -c(4)]  # Yukarıdaki ile aynı işlevi görür Temp değişkeni hariç tutulduğunda Gün değişkeninin 1 olduğu verileri görüntüleme

>	merge(myDf1, myDf2, by="vec1")  # “myDf1” ve “myDf2” veri çerçevelerini “vec1” değişkenine göre göre birleştirme.