.class public final synthetic Ld70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;III)V
    .locals 0

    iput p8, p0, Ld70;->b:I

    iput-object p1, p0, Ld70;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Ld70;->d:Z

    iput-boolean p3, p0, Ld70;->e:Z

    iput-object p4, p0, Ld70;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p5, p0, Ld70;->g:Lkotlin/jvm/functions/Function1;

    iput p6, p0, Ld70;->h:I

    iput p7, p0, Ld70;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Ld70;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ld70;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v1, p0, Ld70;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Ld70;->d:Z

    iget-boolean v3, p0, Ld70;->e:Z

    iget-object v4, p0, Ld70;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v5, p0, Ld70;->g:Lkotlin/jvm/functions/Function1;

    iget v8, p0, Ld70;->i:I

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ld70;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Ld70;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Ld70;->d:Z

    iget-boolean v2, p0, Ld70;->e:Z

    iget-object v3, p0, Ld70;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v4, p0, Ld70;->g:Lkotlin/jvm/functions/Function1;

    iget v7, p0, Ld70;->i:I

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
