.class public final Lcom/vuitton/android/designkit/ui/theme/LVOpacity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001BM\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/LVOpacity;",
        "",
        "",
        "opacity100",
        "opacity95",
        "opacity75",
        "opacity50",
        "opacity25",
        "opacity10",
        "opacity0",
        "<init>",
        "(FFFFFFF)V",
        "system"
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
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 63
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;-><init>(FFFFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFFFF)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->a:F

    .line 57
    iput p2, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    .line 58
    iput p3, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    .line 59
    iput p4, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    .line 60
    iput p5, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->e:F

    .line 61
    iput p6, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->f:F

    .line 62
    iput p7, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->g:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const p2, 0x3f733333    # 0.95f

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    const/high16 p3, 0x3f400000    # 0.75f

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    const/high16 p4, 0x3f000000    # 0.5f

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    const/high16 p5, 0x3e800000    # 0.25f

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    const p6, 0x3dcccccd    # 0.1f

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    const/4 p7, 0x0

    :cond_6
    move p8, p6

    move p9, p7

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-direct/range {p2 .. p9}, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;-><init>(FFFFFFF)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->a:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->e:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->f:F

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->f:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->g:F

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->g:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->e:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->f:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->g:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LVOpacity(opacity100="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", opacity95="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", opacity75="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", opacity50="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", opacity25="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", opacity10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", opacity0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->g:F

    invoke-static {p0, v1, v0}, Ld21;->e(FLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
