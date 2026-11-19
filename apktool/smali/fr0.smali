.class public final synthetic Lfr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/Recomposer;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/Recomposer;I)V
    .locals 0

    iput p2, p0, Lfr0;->b:I

    iput-object p1, p0, Lfr0;->c:Landroidx/compose/runtime/Recomposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfr0;->b:I

    iget-object p0, p0, Lfr0;->c:Landroidx/compose/runtime/Recomposer;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroidx/compose/runtime/Recomposer;->z:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->K()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Landroidx/compose/runtime/Recomposer;->z:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->K()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
