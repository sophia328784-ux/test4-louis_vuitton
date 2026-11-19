.class public final Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/SnackbarVisuals;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;",
        "Landroidx/compose/material3/SnackbarVisuals;",
        "",
        "message",
        "Landroidx/compose/material3/SnackbarDuration;",
        "duration",
        "",
        "withDismissAction",
        "actionLabel",
        "haptic",
        "Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;",
        "configuration",
        "<init>",
        "(Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/compose/material3/SnackbarDuration;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->b:Landroidx/compose/material3/SnackbarDuration;

    .line 44
    iput-boolean p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->c:Z

    .line 45
    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->d:Ljava/lang/String;

    .line 46
    iput-boolean p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->e:Z

    .line 47
    iput-object p6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->f:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    sget-object p2, Landroidx/compose/material3/SnackbarDuration;->Short:Landroidx/compose/material3/SnackbarDuration;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    move v3, p8

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    move v5, p8

    goto :goto_1

    :cond_3
    move v5, p5

    :goto_1
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    sget-object p6, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;->SUCCESS:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;-><init>(Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarConfiguration;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->c:Z

    return p0
.end method

.method public final getDuration()Landroidx/compose/material3/SnackbarDuration;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;->b:Landroidx/compose/material3/SnackbarDuration;

    return-object p0
.end method
