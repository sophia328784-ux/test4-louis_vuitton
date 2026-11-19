.class public final Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;",
        "",
        "",
        "id",
        "title",
        "subtitle",
        "description",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;",
        "disclaimer",
        "",
        "isExpanded",
        "isOptional",
        "isEnabled",
        "updateFormAfterEditing",
        "",
        "disruptedStepsAfterEditing",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;",
        "data",
        "isLoading",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;Z)V",
        "presentation"
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Ljava/util/List;

.field public final k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

.field public final l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;",
            "ZZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->b:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->c:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->d:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;

    .line 58
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    .line 59
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    .line 60
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->h:Z

    .line 61
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->i:Z

    .line 62
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->j:Ljava/util/List;

    .line 63
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    .line 64
    iput-boolean p12, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->l:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x4

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p14, p13, 0x20

    const/4 v0, 0x0

    if-eqz p14, :cond_3

    move p6, v0

    :cond_3
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_4

    move p7, v0

    :cond_4
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_5

    move p8, v0

    :cond_5
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_6

    move p9, v0

    :cond_6
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_7

    sget-object p10, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_7
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_8

    move p12, v0

    :cond_8
    invoke-direct/range {p0 .. p12}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;Z)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;
    .locals 13

    move/from16 v0, p5

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;

    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_0

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    :cond_0
    move v6, p1

    iget-boolean v7, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->h:Z

    move v8, p1

    goto :goto_0

    :cond_1
    move v8, p2

    :goto_0
    iget-boolean v9, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->i:Z

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->j:Ljava/util/List;

    and-int/lit16 p1, v0, 0x400

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    move-object v11, p1

    goto :goto_1

    :cond_2
    move-object/from16 v11, p3

    :goto_1
    and-int/lit16 p1, v0, 0x800

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->l:Z

    move v12, p1

    goto :goto_2

    :cond_3
    move/from16 v12, p4

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    invoke-direct/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;ZZZZLjava/util/List;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->l:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->l:Z

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->i:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->j:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->l:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", subtitle="

    const-string v2, "BookingFormModuleUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    const-string v2, ", disclaimer="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingDisclaimerUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOptional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    const-string v2, ", updateFormAfterEditing="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disruptedStepsAfterEditing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->l:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
