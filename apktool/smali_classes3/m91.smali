.class public final synthetic Lm91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lm91;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lm91;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->attr_guid:Ljava/lang/String;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/b$b;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/template/b$b;->e()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/b$b;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/template/b$b;->c()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/b$b;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/template/b$b;->d()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
