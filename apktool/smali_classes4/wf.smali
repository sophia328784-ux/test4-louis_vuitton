.class public final synthetic Lwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;III)V
    .locals 0

    const/4 p4, 0x2

    iput p4, p0, Lwf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwf;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lwf;->d:I

    iput p3, p0, Lwf;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IIIB)V
    .locals 0

    .line 13
    iput p4, p0, Lwf;->b:I

    iput-object p1, p0, Lwf;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lwf;->d:I

    iput p3, p0, Lwf;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lwf;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lwf;->c:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lwf;->d:I

    iget p0, p0, Lwf;->e:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingPreferencesComposableKt;->c(Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lwf;->c:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lwf;->d:I

    iget p0, p0, Lwf;->e:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/sightcall/graphik/composent/DividersKt;->a(Landroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lwf;->d:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lwf;->c:Landroidx/compose/ui/Modifier;

    iget p0, p0, Lwf;->e:I

    invoke-static {v0, p1, p2, p0}, Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleGridKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
