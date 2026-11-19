.class public Lcom/linkplay/lpmdpkit/okhttp/HttpHeaderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAcceptLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageZH()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zh-cn"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageTW_HK()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "zh-tw"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageDe()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "de-de"

    return-object v0

    :cond_2
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageJapan()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ja-jp"

    return-object v0

    :cond_3
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageKorea()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ko-kr"

    return-object v0

    :cond_4
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageItaly()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "it-it"

    return-object v0

    :cond_5
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguagePortuguese()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "pt-pt"

    return-object v0

    :cond_6
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageFr()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "fr-fr"

    return-object v0

    :cond_7
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageNl()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "nl-nl"

    return-object v0

    :cond_8
    invoke-static {}, Lcom/linkplay/lpmdpkit/utils/UserPhoneInfo;->isLanguageSpanish()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "es-es"

    return-object v0

    :cond_9
    const-string v0, "en-us"

    return-object v0
.end method
