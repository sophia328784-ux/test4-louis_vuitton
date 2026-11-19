.class public final synthetic Lr30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;I)V
    .locals 0

    iput p2, p0, Lr30;->b:I

    iput-object p1, p0, Lr30;->c:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr30;->b:I

    iget-object p0, p0, Lr30;->c:Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->i:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->i:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
