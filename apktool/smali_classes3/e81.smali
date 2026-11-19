.class public final synthetic Le81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Le81;->b:I

    iput-object p1, p0, Le81;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Le81;->b:I

    iget-object p0, p0, Le81;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/o$b;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/o$e;->a:Lcom/perfectcorp/perfectlib/ph/template/o$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/o$b;->attr_name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/o$b;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/o$b;->attr_name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/o$g;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/o$g;->attr_name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/o$c;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/o$c;->attr_name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$b;->attr_name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$e;->attr_name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$c;->attr_name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
