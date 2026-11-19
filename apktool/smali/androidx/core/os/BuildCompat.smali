.class public final Landroidx/core/os/BuildCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/BuildCompat$Api30Impl;,
        Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0006R\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/core/os/BuildCompat;",
        "",
        "<init>",
        "()V",
        "",
        "b",
        "I",
        "R_EXTENSION_INT",
        "c",
        "S_EXTENSION_INT",
        "d",
        "T_EXTENSION_INT",
        "e",
        "AD_SERVICES_EXTENSION_INT",
        "PrereleaseSdkCheck",
        "Api30Impl",
        "core"
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
.field public static final a:Landroidx/core/os/BuildCompat;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/core/os/BuildCompat;

    invoke-direct {v0}, Landroidx/core/os/BuildCompat;-><init>()V

    sput-object v0, Landroidx/core/os/BuildCompat;->a:Landroidx/core/os/BuildCompat;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    sget-object v3, Landroidx/core/os/BuildCompat$Api30Impl;->a:Landroidx/core/os/BuildCompat$Api30Impl;

    invoke-virtual {v3, v2}, Landroidx/core/os/BuildCompat$Api30Impl;->a(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sput v3, Landroidx/core/os/BuildCompat;->b:I

    if-lt v0, v2, :cond_1

    sget-object v3, Landroidx/core/os/BuildCompat$Api30Impl;->a:Landroidx/core/os/BuildCompat$Api30Impl;

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Landroidx/core/os/BuildCompat$Api30Impl;->a(I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sput v3, Landroidx/core/os/BuildCompat;->c:I

    if-lt v0, v2, :cond_2

    sget-object v3, Landroidx/core/os/BuildCompat$Api30Impl;->a:Landroidx/core/os/BuildCompat$Api30Impl;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Landroidx/core/os/BuildCompat$Api30Impl;->a(I)I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    sput v3, Landroidx/core/os/BuildCompat;->d:I

    if-lt v0, v2, :cond_3

    sget-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->a:Landroidx/core/os/BuildCompat$Api30Impl;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Landroidx/core/os/BuildCompat$Api30Impl;->a(I)I

    move-result v1

    :cond_3
    sput v1, Landroidx/core/os/BuildCompat;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
