.class public final Lcom/google/android/filament/utils/Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Quaternion$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0010B/\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u001b\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u000bB\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0007\u0010\rB\u0011\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/google/android/filament/utils/Quaternion;",
        "",
        "",
        "x",
        "y",
        "z",
        "w",
        "<init>",
        "(FFFF)V",
        "Lcom/google/android/filament/utils/Float3;",
        "v",
        "(Lcom/google/android/filament/utils/Float3;F)V",
        "Lcom/google/android/filament/utils/Float4;",
        "(Lcom/google/android/filament/utils/Float4;)V",
        "q",
        "(Lcom/google/android/filament/utils/Quaternion;)V",
        "Companion",
        "filament-utils-android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Lcom/google/android/filament/utils/Quaternion$Companion;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/filament/utils/Quaternion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/utils/Quaternion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/filament/utils/Quaternion;->e:Lcom/google/android/filament/utils/Quaternion$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 31
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    .line 28
    iput p2, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    .line 29
    iput p3, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    .line 30
    iput p4, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float3;F)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iget v0, p1, Lcom/google/android/filament/utils/Float3;->a:F

    .line 35
    iget v1, p1, Lcom/google/android/filament/utils/Float3;->b:F

    .line 36
    iget p1, p1, Lcom/google/android/filament/utils/Float3;->c:F

    .line 37
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/filament/utils/Float3;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 32
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Quaternion;-><init>(Lcom/google/android/filament/utils/Float3;F)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Float4;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget v0, p1, Lcom/google/android/filament/utils/Float4;->a:F

    .line 39
    iget v1, p1, Lcom/google/android/filament/utils/Float4;->b:F

    .line 40
    iget v2, p1, Lcom/google/android/filament/utils/Float4;->c:F

    .line 41
    iget p1, p1, Lcom/google/android/filament/utils/Float4;->d:F

    .line 42
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/utils/Quaternion;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget v0, p1, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v1, p1, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v2, p1, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget p1, p1, Lcom/google/android/filament/utils/Quaternion;->d:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/filament/utils/Mat4;
    .locals 27

    invoke-static/range {p0 .. p0}, Lcom/google/android/filament/utils/QuaternionKt;->b(Lcom/google/android/filament/utils/Quaternion;)Lcom/google/android/filament/utils/Quaternion;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/utils/Mat4;

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    iget v9, v0, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v10, v9, v9

    iget v11, v0, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v12, v11, v11

    add-float v3, v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v3, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v3, v14, v3

    iget v15, v0, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v16, v15, v9

    iget v0, v0, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v17, v11, v0

    add-float v4, v17, v16

    mul-float/2addr v4, v13

    mul-float v18, v15, v11

    mul-float v19, v9, v0

    sub-float v5, v18, v19

    mul-float/2addr v5, v13

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    sub-float v16, v16, v17

    mul-float v21, v16, v13

    mul-float v4, v15, v15

    add-float/2addr v12, v4

    mul-float/2addr v12, v13

    sub-float v22, v14, v12

    mul-float/2addr v9, v11

    mul-float/2addr v15, v0

    add-float v0, v15, v9

    mul-float v23, v0, v13

    const/16 v25, 0x8

    const/16 v26, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v26}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v20, Lcom/google/android/filament/utils/Float4;

    add-float v19, v19, v18

    mul-float v21, v19, v13

    sub-float/2addr v9, v15

    mul-float v22, v9, v13

    add-float/2addr v10, v4

    mul-float/2addr v10, v13

    sub-float v23, v14, v10

    invoke-direct/range {v20 .. v26}, Lcom/google/android/filament/utils/Float4;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v4, v20

    invoke-direct/range {v1 .. v7}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/filament/utils/Quaternion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/filament/utils/Quaternion;

    iget v1, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v3, p1, Lcom/google/android/filament/utils/Quaternion;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v3, p1, Lcom/google/android/filament/utils/Quaternion;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v3, p1, Lcom/google/android/filament/utils/Quaternion;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget p1, p1, Lcom/google/android/filament/utils/Quaternion;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget v2, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    invoke-static {v0, v1, v2}, Lpq0;->b(IIF)I

    move-result v0

    iget p0, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Quaternion(x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
