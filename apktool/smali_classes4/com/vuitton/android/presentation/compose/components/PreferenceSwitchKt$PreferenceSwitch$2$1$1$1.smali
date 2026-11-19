.class final synthetic Lcom/vuitton/android/presentation/compose/components/PreferenceSwitchKt$PreferenceSwitch$2$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;",
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
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/components/PreferenceSwitchKt$PreferenceSwitch$2$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/components/PreferenceSwitchKt$PreferenceSwitch$2$1$1$1;->c:Landroidx/compose/runtime/MutableState;

    const-string v4, "PreferenceSwitch$switch(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v3, "switch"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/compose/components/PreferenceSwitchKt$PreferenceSwitch$2$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/components/PreferenceSwitchKt$PreferenceSwitch$2$1$1$1;->c:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, p0, p1}, Lcom/vuitton/android/presentation/compose/components/PreferenceSwitchKt;->b(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
