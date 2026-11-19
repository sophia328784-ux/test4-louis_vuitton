.class public final Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ocr"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u001b\u001a\u00020\u0005H\u00d6\u0081\u0004J\n\u0010\u001c\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0016\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;",
        "",
        "id",
        "",
        "text",
        "",
        "translatedText",
        "language",
        "translatedLanguage",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "getText",
        "()I",
        "getTranslatedText",
        "getLanguage",
        "getTranslatedLanguage",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private final text:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field private final translatedLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "translatedLanguage"
    .end annotation
.end field

.field private final translatedText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "translatedText"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p3, p4, p5}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->id:Ljava/lang/String;

    iput p2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->text:I

    iput-object p3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedText:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->language:Ljava/lang/String;

    iput-object p5, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedLanguage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->text:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedText:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->language:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedLanguage:Ljava/lang/String;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->text:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedText:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;

    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->text:I

    iget v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->text:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedText:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedLanguage:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedLanguage:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final getText()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->text:I

    return p0
.end method

.method public final getTranslatedLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getTranslatedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->text:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->language:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedLanguage:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->id:Ljava/lang/String;

    iget v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->text:I

    iget-object v2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->language:Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;->translatedLanguage:Ljava/lang/String;

    const-string v4, ", text="

    const-string v5, ", translatedText="

    const-string v6, "Ocr(id="

    invoke-static {v1, v6, v0, v4, v5}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    const-string v4, ", translatedLanguage="

    invoke-static {v0, v2, v1, v3, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
