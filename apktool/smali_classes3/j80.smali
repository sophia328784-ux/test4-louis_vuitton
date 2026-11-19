.class public final synthetic Lj80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj80;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    iput-object p2, p0, Lj80;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lj80;->d:Ljava/lang/String;

    iput-object p4, p0, Lj80;->e:Ljava/lang/String;

    iput-wide p5, p0, Lj80;->f:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    const/16 p1, 0x6001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lj80;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    iget-object v1, p0, Lj80;->c:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lj80;->d:Ljava/lang/String;

    iget-object v3, p0, Lj80;->e:Ljava/lang/String;

    iget-wide v4, p0, Lj80;->f:J

    invoke-virtual/range {v0 .. v7}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
