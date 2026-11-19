.class Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/floatbtnmanager/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment$2;->a:Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_1

    const/16 p0, 0x22b8

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "\u4e0a\u4f20\u5931\u8d25-\u672a\u77e5\u9519\u8bef"

    goto :goto_0

    :pswitch_0
    const-string p0, "\u4e0a\u4f20\u5931\u8d25-\u4e0a\u4f20\u56fe\u7247\u9519\u8bef"

    goto :goto_0

    :pswitch_1
    const-string p0, "\u4e0a\u4f20\u5931\u8d25-\u8bf7\u68c0\u67e5AppID"

    goto :goto_0

    :pswitch_2
    const-string p0, "\u4e0a\u4f20\u5931\u8d25-Token\u5931\u6548\uff0c\u8bf7\u5237\u65b0\u9875\u9762\u91cd\u65b0\u626b\u63cf\u4e8c\u7ef4\u7801"

    goto :goto_0

    :pswitch_3
    const-string p0, "\u4e0a\u4f20\u5931\u8d25-\u540e\u53f0\u903b\u8f91\u5f02\u5e38"

    goto :goto_0

    :cond_0
    const-string p0, "\u83b7\u53d6\u4e0a\u4f20\u7684URL\u9519\u8bef"

    goto :goto_0

    :cond_1
    const-string p0, "\u4e0a\u4f20\u6210\u529f"

    :goto_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/SubmitPageVisualFragment;->a(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
