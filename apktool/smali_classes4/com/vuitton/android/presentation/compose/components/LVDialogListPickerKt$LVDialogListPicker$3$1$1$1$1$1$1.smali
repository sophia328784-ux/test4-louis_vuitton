.class final Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
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


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/compose/components/ListPickerItem;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;->b:Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;->c:Lkotlin/jvm/functions/Function2;

    iput p3, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;->d:I

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;->b:Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/compose/components/ListPickerItem;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$1$1$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
