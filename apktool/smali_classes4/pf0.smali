.class public final synthetic Lpf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/layout/ColumnScope;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Z

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZII)V
    .locals 0

    iput p9, p0, Lpf0;->b:I

    iput-object p1, p0, Lpf0;->c:Landroidx/compose/foundation/layout/ColumnScope;

    iput-object p2, p0, Lpf0;->d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iput-object p3, p0, Lpf0;->e:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lpf0;->f:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lpf0;->g:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lpf0;->h:Lkotlin/jvm/functions/Function1;

    iput-boolean p7, p0, Lpf0;->i:Z

    iput p8, p0, Lpf0;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lpf0;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lpf0;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lpf0;->c:Landroidx/compose/foundation/layout/ColumnScope;

    iget-object v2, p0, Lpf0;->d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object v3, p0, Lpf0;->e:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lpf0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lpf0;->g:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lpf0;->h:Lkotlin/jvm/functions/Function1;

    iget-boolean v7, p0, Lpf0;->i:Z

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterPersonalInfoComposableKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lpf0;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lpf0;->c:Landroidx/compose/foundation/layout/ColumnScope;

    iget-object v1, p0, Lpf0;->d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object v2, p0, Lpf0;->e:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lpf0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lpf0;->g:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lpf0;->h:Lkotlin/jvm/functions/Function1;

    iget-boolean v6, p0, Lpf0;->i:Z

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterCredentialsComposableKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
