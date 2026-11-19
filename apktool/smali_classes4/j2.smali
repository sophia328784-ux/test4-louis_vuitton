.class public final synthetic Lj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p3, p0, Lj2;->b:I

    iput-object p1, p0, Lj2;->c:Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;

    iput-object p2, p0, Lj2;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj2;->b:I

    iget-object v1, p0, Lj2;->d:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lj2;->c:Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$OpenStatement;->a:Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$OpenStatement;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;->I8(Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Close;->a:Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel$Close;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;->I8(Lcom/vuitton/android/presentation/screen/options/accessibility/models/AccessibilityPreferencesTrackingUiModel;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
