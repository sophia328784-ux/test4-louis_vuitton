.class public final synthetic Lbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;I)V
    .locals 0

    iput p3, p0, Lbq;->b:I

    iput-object p1, p0, Lbq;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lbq;->d:Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lbq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbq;->d:Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object p0, p0, Lbq;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lbq;->d:Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object p0, p0, Lbq;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
