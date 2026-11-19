.class public final synthetic Lpr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;I)V
    .locals 0

    iput p2, p0, Lpr0;->b:I

    iput-object p1, p0, Lpr0;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lpr0;->b:I

    iget-object p0, p0, Lpr0;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->c()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->c()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->c()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
