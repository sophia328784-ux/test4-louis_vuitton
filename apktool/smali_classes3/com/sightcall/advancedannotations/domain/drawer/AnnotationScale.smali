.class public final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0080\u0008\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\t\u0010\u0012\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0016\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010\u0017\u001a\u00020\u000fH\u00d6\u0081\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;",
        "",
        "percentage",
        "",
        "<init>",
        "(I)V",
        "valueForView",
        "",
        "view",
        "Landroid/view/View;",
        "isZero",
        "",
        "isHundred",
        "textScaleForView",
        "percentString",
        "",
        "getPercentString",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Companion",
        "advancedannotations_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;

.field public static final WidthReference:F = 640.0f


# instance fields
.field private final percentage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    return-void
.end method

.method private final component1()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    return p0
.end method

.method public static synthetic copy$default(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;IILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->copy(I)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(I)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;
    .locals 0

    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    invoke-direct {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    iget p1, p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getPercentString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final isHundred()Z
    .locals 1

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isZero()Z
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final textScaleForView(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x7

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->forView(ILandroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    const-string v0, "AnnotationScale(percentage="

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final valueForView(Landroid/view/View;)F
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->percentage:I

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->forView(FLandroid/view/View;)F

    move-result p0

    return p0
.end method
