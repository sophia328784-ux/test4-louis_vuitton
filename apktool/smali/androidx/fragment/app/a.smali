.class public final synthetic Landroidx/fragment/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/fragment/app/SpecialEffectsController$Effect;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/SpecialEffectsController$Effect;I)V
    .locals 0

    iput p4, p0, Landroidx/fragment/app/a;->b:I

    iput-object p1, p0, Landroidx/fragment/app/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/a;->e:Landroidx/fragment/app/SpecialEffectsController$Effect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/a;->b:I

    iget-object v1, p0, Landroidx/fragment/app/a;->e:Landroidx/fragment/app/SpecialEffectsController$Effect;

    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/fragment/app/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;

    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;->o:Z

    iget-object v1, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;->n:Landroidx/collection/ArrayMap;

    invoke-static {p0, v0, v2, v1}, Landroidx/fragment/app/FragmentTransition;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/View;

    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p0, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;->c:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->c(Landroidx/fragment/app/SpecialEffectsController$Effect;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
