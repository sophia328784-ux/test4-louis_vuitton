.class public final Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/PictureGroupV3Request$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;,
        Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002*+Ba\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u00c6\u0003J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000bH\u00c6\u0003Js\u0010$\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000bH\u00c6\u0001J\u0014\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010(\u001a\u00020\u0005H\u00d6\u0081\u0004J\n\u0010)\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001a\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;",
        "",
        "reference",
        "",
        "pictureCount",
        "",
        "emailFrom",
        "emailTo",
        "emailSubject",
        "emailBody",
        "measures",
        "",
        "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;",
        "ocr",
        "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V",
        "getReference",
        "()Ljava/lang/String;",
        "getPictureCount",
        "()I",
        "getEmailFrom",
        "getEmailTo",
        "getEmailSubject",
        "getEmailBody",
        "getMeasures",
        "()Ljava/util/List;",
        "getOcr",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Measure",
        "Ocr",
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
.field private final emailBody:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailBody"
    .end annotation
.end field

.field private final emailFrom:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailFrom"
    .end annotation
.end field

.field private final emailSubject:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailSubject"
    .end annotation
.end field

.field private final emailTo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailTo"
    .end annotation
.end field

.field private final measures:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "measures"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;",
            ">;"
        }
    .end annotation
.end field

.field private final ocr:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ocr"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;",
            ">;"
        }
    .end annotation
.end field

.field private final pictureCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pictureCount"
    .end annotation
.end field

.field private final reference:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reference"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->reference:Ljava/lang/String;

    iput p2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->pictureCount:I

    iput-object p3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailFrom:Ljava/lang/String;

    iput-object p4, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailTo:Ljava/lang/String;

    iput-object p5, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailSubject:Ljava/lang/String;

    iput-object p6, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailBody:Ljava/lang/String;

    iput-object p7, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->measures:Ljava/util/List;

    iput-object p8, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->ocr:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->reference:Ljava/lang/String;

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget p2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->pictureCount:I

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-object p3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailFrom:Ljava/lang/String;

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-object p4, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailTo:Ljava/lang/String;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-object p5, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailSubject:Ljava/lang/String;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-object p6, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailBody:Ljava/lang/String;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-object p7, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->measures:Ljava/util/List;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-object p8, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->ocr:Ljava/util/List;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->pictureCount:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailFrom:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailTo:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailSubject:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailBody:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->measures:Ljava/util/List;

    return-object p0
.end method

.method public final component8()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->ocr:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;",
            ">;)",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;"
        }
    .end annotation

    new-instance p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;

    invoke-direct/range {p0 .. p8}, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;

    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->reference:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->reference:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->pictureCount:I

    iget v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->pictureCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailFrom:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailFrom:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailTo:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailTo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailSubject:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailSubject:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailBody:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailBody:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->measures:Ljava/util/List;

    iget-object v3, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->measures:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->ocr:Ljava/util/List;

    iget-object p1, p1, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->ocr:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getEmailBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailBody:Ljava/lang/String;

    return-object p0
.end method

.method public final getEmailFrom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailFrom:Ljava/lang/String;

    return-object p0
.end method

.method public final getEmailSubject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailSubject:Ljava/lang/String;

    return-object p0
.end method

.method public final getEmailTo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailTo:Ljava/lang/String;

    return-object p0
.end method

.method public final getMeasures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Measure;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->measures:Ljava/util/List;

    return-object p0
.end method

.method public final getOcr()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes$Ocr;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->ocr:Ljava/util/List;

    return-object p0
.end method

.method public final getPictureCount()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->pictureCount:I

    return p0
.end method

.method public final getReference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->reference:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->pictureCount:I

    invoke-static {v3, v0, v2}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailFrom:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailTo:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailSubject:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailBody:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->measures:Ljava/util/List;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->ocr:Ljava/util/List;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->reference:Ljava/lang/String;

    iget v1, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->pictureCount:I

    iget-object v2, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailFrom:Ljava/lang/String;

    iget-object v3, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailTo:Ljava/lang/String;

    iget-object v4, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailSubject:Ljava/lang/String;

    iget-object v5, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->emailBody:Ljava/lang/String;

    iget-object v6, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->measures:Ljava/util/List;

    iget-object p0, p0, Lcom/sightcall/universal/media/PictureGroupV3Request$Data$Attributes;->ocr:Ljava/util/List;

    const-string v7, ", pictureCount="

    const-string v8, ", emailFrom="

    const-string v9, "Attributes(reference="

    invoke-static {v1, v9, v0, v7, v8}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailTo="

    const-string v7, ", emailSubject="

    invoke-static {v0, v2, v1, v3, v7}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", emailBody="

    const-string v2, ", measures="

    invoke-static {v0, v4, v1, v5, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ocr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
