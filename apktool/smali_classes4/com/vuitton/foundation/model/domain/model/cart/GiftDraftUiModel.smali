.class public final Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u000cB9\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;",
        "",
        "",
        "isBlank",
        "",
        "draftText",
        "isValid",
        "isConfirmEnabled",
        "",
        "linesLeft",
        "<init>",
        "(ZLjava/lang/String;ZZI)V",
        "Companion",
        "domain"
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
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 37
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;-><init>(ZLjava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZZI)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a:Z

    .line 33
    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->b:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->c:Z

    .line 35
    iput-boolean p4, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->d:Z

    .line 36
    iput p5, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->e:I

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const-string p2, ""

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    const/4 p5, 0x6

    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;-><init>(ZLjava/lang/String;ZZI)V

    return-void
.end method

.method public static a(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;ZLjava/lang/String;ZII)Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;
    .locals 6

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a:Z

    :cond_0
    move v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->b:Ljava/lang/String;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->d:Z

    :goto_0
    move v4, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    and-int/lit8 p1, p5, 0x10

    if-eqz p1, :cond_3

    iget p4, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->e:I

    :cond_3
    move v5, p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;-><init>(ZLjava/lang/String;ZZI)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->e:I

    iget p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->e:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GiftDraftUiModel(isBlank="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", draftText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isConfirmEnabled="

    const-string v2, ", linesLeft="

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->e:I

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
