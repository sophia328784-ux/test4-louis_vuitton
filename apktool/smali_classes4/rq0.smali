.class public final synthetic Lrq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lrq0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lrq0;->d:Ljava/lang/Integer;

    iput-object p3, p0, Lrq0;->e:Ljava/lang/String;

    iput p4, p0, Lrq0;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Integer;II)V
    .locals 0

    .line 15
    const/4 p4, 0x0

    iput p4, p0, Lrq0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lrq0;->e:Ljava/lang/String;

    iput-object p3, p0, Lrq0;->d:Ljava/lang/Integer;

    iput p5, p0, Lrq0;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lrq0;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lrq0;->f:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lrq0;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lrq0;->d:Ljava/lang/Integer;

    iget-object p0, p0, Lrq0;->e:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/SearchResultCountBarKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Integer;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget-object v0, p0, Lrq0;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lrq0;->e:Ljava/lang/String;

    iget-object v2, p0, Lrq0;->d:Ljava/lang/Integer;

    iget v5, p0, Lrq0;->f:I

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/compose/components/PushCardImageLoaderKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
