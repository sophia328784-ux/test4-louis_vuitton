.class public final synthetic Li00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;I)V
    .locals 0

    iput p2, p0, Li00;->b:I

    iput-object p1, p0, Li00;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Li00;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Li00;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->a:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    if-eqz v1, :cond_1

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->a:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p0

    :cond_2
    if-eqz v1, :cond_3

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
