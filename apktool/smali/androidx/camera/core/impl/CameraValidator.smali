.class public abstract Landroidx/camera/core/impl/CameraValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraValidator$Api34Impl;,
        Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;
    }
.end annotation


# static fields
.field public static final a:Landroidx/camera/core/CameraSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraSelector$Builder;->a(I)V

    new-instance v1, Landroidx/camera/core/CameraSelector;

    iget-object v0, v0, Landroidx/camera/core/CameraSelector$Builder;->a:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Landroidx/camera/core/CameraSelector;-><init>(Ljava/util/LinkedHashSet;)V

    sput-object v1, Landroidx/camera/core/impl/CameraValidator;->a:Landroidx/camera/core/CameraSelector;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/CameraSelector;)V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x3

    const-string v3, "CameraValidator"

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/camera/core/impl/CameraValidator$Api34Impl;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->g()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-static {p0}, Landroidx/camera/core/impl/CameraValidator$Api34Impl;->a(Landroid/content/Context;)I

    invoke-interface {p1}, Ljava/util/Set;->size()I

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroidx/camera/core/CameraSelector;->b()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {v3}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v4, v0

    :cond_2
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v5, 0x0

    :try_start_1
    const-string v6, "android.hardware.camera"

    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_4

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v7, Landroidx/camera/core/CameraSelector;->c:Landroidx/camera/core/CameraSelector;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->g()Ljava/util/LinkedHashSet;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/camera/core/CameraSelector;->c(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v6

    goto :goto_2

    :goto_1
    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_4
    :goto_2
    :try_start_2
    const-string v6, "android.hardware.camera.front"

    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v0, p0

    goto :goto_4

    :cond_5
    :goto_3
    sget-object p0, Landroidx/camera/core/CameraSelector;->b:Landroidx/camera/core/CameraSelector;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->g()Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/camera/core/CameraSelector;->c(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :goto_4
    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_6
    :goto_5
    :try_start_3
    sget-object p0, Landroidx/camera/core/impl/CameraValidator;->a:Landroidx/camera/core/CameraSelector;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->g()Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/camera/core/CameraSelector;->c(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v5, v5, 0x1

    :catch_3
    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->g()Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v3}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    new-instance p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    const-string p1, "Expected camera missing from device."

    invoke-direct {p0, p1, v5, v0}, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p0
.end method
