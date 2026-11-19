.class public final Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001BY\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;",
        "portal",
        "",
        "isLoading",
        "isError",
        "isSoundOn",
        "soundManuallySet",
        "isNavigationSimplified",
        "isAutoPlayDisabled",
        "isContrastEnhanced",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZZZZZZ)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 72
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;-><init>(Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZZZZZZ)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    .line 65
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->b:Z

    .line 66
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->c:Z

    .line 67
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->d:Z

    .line 68
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->e:Z

    .line 69
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->f:Z

    .line 70
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->g:Z

    .line 71
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    const/4 v0, 0x0

    if-eqz p10, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    const/4 p4, 0x1

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    move p10, v0

    move p8, p6

    move p9, p7

    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    goto :goto_0

    :cond_7
    move p10, p8

    move p9, p7

    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    :goto_0
    invoke-direct/range {p2 .. p10}, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;-><init>(Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->h:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PortalViewState(portal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSoundOn="

    const-string v2, ", soundManuallySet="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isNavigationSimplified="

    const-string v2, ", isAutoPlayDisabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isContrastEnhanced="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->g:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;->h:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
