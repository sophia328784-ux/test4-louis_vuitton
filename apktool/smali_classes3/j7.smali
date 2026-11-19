.class public final synthetic Lj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p8, p0, Lj7;->b:I

    iput-object p1, p0, Lj7;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;

    iput-object p2, p0, Lj7;->d:Ljava/lang/String;

    iput-object p3, p0, Lj7;->e:Ljava/lang/String;

    iput-object p4, p0, Lj7;->f:Ljava/lang/String;

    iput-object p5, p0, Lj7;->g:Ljava/lang/String;

    iput-object p6, p0, Lj7;->h:Ljava/lang/String;

    iput-object p7, p0, Lj7;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lj7;->b:I

    iget-object v1, p0, Lj7;->i:Ljava/lang/Object;

    iget-object v2, p0, Lj7;->h:Ljava/lang/String;

    iget-object v3, p0, Lj7;->g:Ljava/lang/String;

    iget-object v4, p0, Lj7;->f:Ljava/lang/String;

    iget-object v5, p0, Lj7;->e:Ljava/lang/String;

    iget-object v6, p0, Lj7;->d:Ljava/lang/String;

    iget-object p0, p0, Lj7;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e:Ljava/util/EnumMap;

    invoke-virtual {v7, p0, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f:Ljava/util/EnumMap;

    invoke-virtual {v6, p0, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->g:Ljava/util/EnumMap;

    invoke-virtual {v5, p0, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->p:Ljava/util/EnumMap;

    invoke-virtual {v4, p0, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->q:Ljava/util/EnumMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e:Ljava/util/EnumMap;

    invoke-virtual {v7, p0, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f:Ljava/util/EnumMap;

    invoke-virtual {v6, p0, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->g:Ljava/util/EnumMap;

    invoke-virtual {v5, p0, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->p:Ljava/util/EnumMap;

    invoke-virtual {v4, p0, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->q:Ljava/util/EnumMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
