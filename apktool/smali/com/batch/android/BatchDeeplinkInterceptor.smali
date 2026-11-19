.class public interface abstract Lcom/batch/android/BatchDeeplinkInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getFallbackIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    invoke-static {p1}, Lcom/batch/android/e/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public abstract getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getTaskStackBuilder(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/TaskStackBuilder;
.end method
