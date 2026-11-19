.class public final synthetic Lk50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:I

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/util/List;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lk50;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk50;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lk50;->d:I

    iput-object p3, p0, Lk50;->j:Ljava/lang/Object;

    iput-object p4, p0, Lk50;->e:Ljava/util/List;

    iput-boolean p5, p0, Lk50;->f:Z

    iput-boolean p6, p0, Lk50;->g:Z

    iput-object p7, p0, Lk50;->k:Ljava/lang/Object;

    iput-object p8, p0, Lk50;->h:Lkotlin/jvm/functions/Function1;

    iput p9, p0, Lk50;->i:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/time/LocalDate;Ljava/util/Locale;ZZLkotlin/jvm/functions/Function1;II)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lk50;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk50;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lk50;->e:Ljava/util/List;

    iput-object p3, p0, Lk50;->j:Ljava/lang/Object;

    iput-object p4, p0, Lk50;->k:Ljava/lang/Object;

    iput-boolean p5, p0, Lk50;->f:Z

    iput-boolean p6, p0, Lk50;->g:Z

    iput-object p7, p0, Lk50;->h:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lk50;->d:I

    iput p9, p0, Lk50;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lk50;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk50;->j:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lk50;->k:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lk50;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v1, p0, Lk50;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lk50;->d:I

    iget-object v4, p0, Lk50;->e:Ljava/util/List;

    iget-boolean v5, p0, Lk50;->f:Z

    iget-boolean v6, p0, Lk50;->g:Z

    iget-object v8, p0, Lk50;->h:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/VariationBottomSheetKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Ljava/util/List;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lk50;->j:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/time/LocalDate;

    iget-object v0, p0, Lk50;->k:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/Locale;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lk50;->d:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lk50;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lk50;->e:Ljava/util/List;

    iget-boolean v5, p0, Lk50;->f:Z

    iget-boolean v6, p0, Lk50;->g:Z

    iget-object v7, p0, Lk50;->h:Lkotlin/jvm/functions/Function1;

    iget v10, p0, Lk50;->i:I

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->d(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/time/LocalDate;Ljava/util/Locale;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
