.class public abstract Lcom/vuitton/android/presentation/helper/LVConnectHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/helper/LVConnectHelper;",
        "",
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


# direct methods
.method public static a(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll00;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Ll00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.vuittoncompanion.android"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "lvconnect://homepage"

    invoke-static {p0, v1, v0, v2}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    return-void

    :catch_0
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    new-instance v3, Ll00;

    const/16 v4, 0xd

    invoke-direct {v3, v1, v4}, Ll00;-><init>(Ljava/lang/Object;I)V

    const-string v4, "market://details?id=com.vuittoncompanion.android"

    invoke-static {p0, v4, v3, v2}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-nez v1, :cond_0

    const-string v1, "https://play.google.com/store/apps/details?id=com.vuittoncompanion.android"

    invoke-static {p0, v1, v0, v2}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    :cond_0
    return-void
.end method
