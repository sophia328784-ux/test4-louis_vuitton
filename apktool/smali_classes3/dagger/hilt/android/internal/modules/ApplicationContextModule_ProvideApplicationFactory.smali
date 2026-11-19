.class public abstract Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {p0}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method
