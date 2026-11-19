.class public Lcom/networkbench/agent/impl/harvest/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/harvest/a/l$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/k;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/k;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/u;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/u;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/p;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/p;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/i;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/i;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/j;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/j;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/o;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/o;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/b;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/b;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/g;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/g;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/f;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/f;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/t;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/t;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/s;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/s;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/q;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/q;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/a;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/a;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_d
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/d;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/d;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/e;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/e;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/networkbench/agent/impl/harvest/a/n;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/n;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_0
    const-string p0, "error uploadData"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
