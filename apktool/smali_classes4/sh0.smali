.class public final synthetic Lsh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/activity/compose/ManagedActivityResultLauncher;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V
    .locals 0

    .line 11
    iput p3, p0, Lsh0;->b:I

    iput-object p1, p0, Lsh0;->c:Landroid/content/Context;

    iput-object p2, p0, Lsh0;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lsh0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsh0;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p2, p0, Lsh0;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lsh0;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacySettingsPage;->a:Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToPrivacySettingsPage;

    iget-object v2, p0, Lsh0;->c:Landroid/content/Context;

    iget-object p0, p0, Lsh0;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->t:Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;

    const-string v1, "Exchange-Instructions"

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v3}, Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/options/OptionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/options/OptionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
