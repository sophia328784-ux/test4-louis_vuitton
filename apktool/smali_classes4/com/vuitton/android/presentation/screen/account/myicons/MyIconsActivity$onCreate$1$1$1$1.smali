.class final synthetic Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity$onCreate$1$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;->q:Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/onboarding/IconLauncherUpdateHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    move-result-object p0

    return-object p0
.end method
