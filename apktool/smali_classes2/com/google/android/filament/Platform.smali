.class abstract Lcom/google/android/filament/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Platform$UnknownPlatform;
    }
.end annotation


# static fields
.field public static a:Lcom/google/android/filament/Platform;


# direct methods
.method public static a()Lcom/google/android/filament/Platform;
    .locals 2

    sget-object v0, Lcom/google/android/filament/Platform;->a:Lcom/google/android/filament/Platform;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "The Android Project"

    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/android/filament/AndroidPlatform;

    sget v1, Lcom/google/android/filament/AndroidPlatform;->b:I

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/filament/Platform;

    sput-object v0, Lcom/google/android/filament/Platform;->a:Lcom/google/android/filament/Platform;

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.filament.DesktopPlatform"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/filament/Platform;

    sput-object v0, Lcom/google/android/filament/Platform;->a:Lcom/google/android/filament/Platform;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    sget-object v0, Lcom/google/android/filament/Platform;->a:Lcom/google/android/filament/Platform;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/filament/Platform$UnknownPlatform;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/filament/Platform;->a:Lcom/google/android/filament/Platform;

    :cond_1
    sget-object v0, Lcom/google/android/filament/Platform;->a:Lcom/google/android/filament/Platform;

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;)J
.end method

.method public abstract c(Ljava/lang/Object;)Z
.end method

.method public abstract d(Ljava/lang/Object;)Z
.end method
