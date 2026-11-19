.class public final synthetic Lc01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;I)V
    .locals 0

    iput p4, p0, Lc01;->b:I

    iput-object p1, p0, Lc01;->c:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    iput-object p2, p0, Lc01;->d:Landroid/content/Context;

    iput-object p3, p0, Lc01;->e:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lc01;->b:I

    iget-object v1, p0, Lc01;->e:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;

    iget-object v2, p0, Lc01;->d:Landroid/content/Context;

    iget-object p0, p0, Lc01;->c:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;->a:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v0, v2, v1, p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;->ec(Landroidx/appcompat/app/AppCompatActivity;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;->a:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v0, v2, v1, p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;->q2(Landroidx/appcompat/app/AppCompatActivity;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;->a:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v0, v2, v1, p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;->b2(Landroidx/activity/ComponentActivity;ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
