.class public final synthetic Lje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lje;->b:I

    iput-object p1, p0, Lje;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lje;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPrivacyPolicyPage;->a:Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToPrivacyPolicyPage;

    const/4 v2, 0x0

    sget-object v3, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;->a:Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToWishlistPage;

    iget-object v4, p0, Lje;->c:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    sget p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;->f:I

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->CATALOG:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    iget-object v1, p0, Lje;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const v1, 0x7f140ad9

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToOptOutPrivacyMenuPage;->a:Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToOptOutPrivacyMenuPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/options/OptionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToSettingsPage;->a:Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToSettingsPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/options/OptionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    sget p0, Lcom/dynatrace/agent/lifecycle/NewUserCheckerImpl;->c:I

    const-string p0, "com.dynatrace.android.dtxPref"

    invoke-virtual {v4, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyExperiencesPage;->a:Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations$ToMyExperiencesPage;

    invoke-static {p0, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/mylv/MyLvDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToRegisterPage;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->DEFAULT:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToRegisterPage;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLoginPage;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->DEFAULT:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLoginPage;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    const-string p0, "firebaseSessions/sessionDataStore.data"

    invoke-static {v4, p0}, Landroidx/datastore/DataStoreFile;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->b(Ljava/io/File;)V

    return-object p0

    :pswitch_11
    const-string p0, "firebaseSessions/sessionConfigsDataStore.data"

    invoke-static {v4, p0}, Landroidx/datastore/DataStoreFile;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->b(Ljava/io/File;)V

    return-object p0

    :pswitch_12
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLoginPage;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->CONTENT_CURATION:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLoginPage;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRegisterPage;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->CONTENT_CURATION:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToRegisterPage;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "window"

    invoke-virtual {v4, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {v4}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    iget-object v1, p0, Lje;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_a

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;->a:Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$ToAICompanionPage;

    invoke-static {p0, v4}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
