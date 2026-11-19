.class public final Landroidx/compose/ui/text/style/LineHeightStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;,
        Landroidx/compose/ui/text/style/LineHeightStyle$Companion;,
        Landroidx/compose/ui/text/style/LineHeightStyle$Mode;,
        Landroidx/compose/ui/text/style/LineHeightStyle$Trim;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0004\u000b\u000c\r\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/LineHeightStyle;",
        "",
        "Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;",
        "alignment",
        "Landroidx/compose/ui/text/style/LineHeightStyle$Trim;",
        "trim",
        "Landroidx/compose/ui/text/style/LineHeightStyle$Mode;",
        "mode",
        "<init>",
        "(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "(FILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "Trim",
        "Alignment",
        "Mode",
        "ui-text"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

.field public static final e:Landroidx/compose/ui/text/style/LineHeightStyle;


# instance fields
.field public final a:F

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->d:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle;

    sget-object v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->d:F

    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->e:I

    sget-object v4, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->e:Landroidx/compose/ui/text/style/LineHeightStyle;

    return-void
.end method

.method public constructor <init>(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->a:F

    iput p2, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->b:I

    iput p3, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->c:I

    return-void
.end method

.method public constructor <init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    sget-object p3, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle;

    iget v1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->a:F

    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    iget v3, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->a:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->b:I

    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    iget v3, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->b:I

    if-ne v3, v1, :cond_2

    iget p1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->c:I

    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->c:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    iget v2, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineHeightStyle(alignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->a:F

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->b:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->c:I

    if-nez p0, :cond_0

    const-string p0, "LineHeightStyle.Mode.Fixed"

    goto :goto_0

    :cond_0
    sget v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->c:I

    if-ne p0, v1, :cond_1

    const-string p0, "LineHeightStyle.Mode.Minimum"

    goto :goto_0

    :cond_1
    sget v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->d:I

    if-ne p0, v1, :cond_2

    const-string p0, "LineHeightStyle.Mode.Tight"

    goto :goto_0

    :cond_2
    const-string p0, "Invalid"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
