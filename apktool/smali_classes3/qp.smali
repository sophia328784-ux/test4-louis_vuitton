.class public final synthetic Lqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p4, p0, Lqp;->b:I

    iput-object p1, p0, Lqp;->c:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    iput-object p2, p0, Lqp;->e:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p3, p0, Lqp;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/contact/ContactUsTracker;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;I)V
    .locals 0

    .line 12
    iput p4, p0, Lqp;->b:I

    iput-object p1, p0, Lqp;->c:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    iput-object p2, p0, Lqp;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lqp;->e:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lqp;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lqp;->d:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lqp;->e:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object p0, p0, Lqp;->c:Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->h:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;->a:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->c(Z)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ContactUs;->a:Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ContactUs;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    iget-object p0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->l:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->b:Ljava/lang/String;

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v3, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    new-instance p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    iget-object v0, v3, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
