.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0081\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;",
        "",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;",
        "success",
        "successInvert",
        "error",
        "errorInvert",
        "chat",
        "chatInvert",
        "feedback",
        "<init>",
        "(Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;)V",
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
.field public final a:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

.field public final b:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

.field public final c:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

.field public final d:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

.field public final e:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

.field public final f:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

.field public final g:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iput-object p6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->f:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iput-object p7, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->f:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iget-object v3, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->f:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0}, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->f:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LVSnackbars(success="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", successInvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->c:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorInvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->e:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chatInvert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->f:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbars;->g:Lcom/vuitton/android/designkit/ui/theme/molecules/SnackbarConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
