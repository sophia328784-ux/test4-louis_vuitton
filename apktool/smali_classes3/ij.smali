.class public final synthetic Lij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lij;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p3, p0, Lij;->d:Ljava/lang/String;

    iput-object p4, p0, Lij;->e:Ljava/lang/String;

    iput p5, p0, Lij;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lij;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lij;->d:Ljava/lang/String;

    iput-object p3, p0, Lij;->e:Ljava/lang/String;

    iput-object p4, p0, Lij;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput p5, p0, Lij;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lij;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lij;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    iget-object v3, p0, Lij;->c:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lij;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v5, p0, Lij;->d:Ljava/lang/String;

    iget-object v6, p0, Lij;->e:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLItemTitlesKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lij;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v0

    iget-object v2, p0, Lij;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lij;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v4, p0, Lij;->d:Ljava/lang/String;

    iget-object v5, p0, Lij;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/components/carousell/CarouselLGlobalTitlesKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
