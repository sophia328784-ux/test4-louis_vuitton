.class public final synthetic Lfn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/Configuration;I)V
    .locals 0

    iput p2, p0, Lfn0;->b:I

    iput-object p1, p0, Lfn0;->c:Lcom/perfectcorp/perfectlib/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lfn0;->b:I

    const-string v1, "PerfectLib"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object p0, p0, Lfn0;->c:Lcom/perfectcorp/perfectlib/Configuration;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->b()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;

    move-result-object v0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->g:Z

    iput-boolean p0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->a:Z

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p0

    iget-object v0, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->b:Lcom/perfectcorp/common/network/h;

    iget-object p0, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    invoke-interface {v0, p0}, Lcom/perfectcorp/common/network/h;->a(Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lo2;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    new-instance p0, Ltg0;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Ltg0;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v1

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    const-string v5, "2b1dd7b5-41ce-401a-a3d9-d594271817cf"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;

    invoke-virtual {v5, v0, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;

    const-string v5, "Add makeup functionality for shade finder. Only foundation can be used."

    const-class v6, Lcom/perfectcorp/perfectlib/Functionality;

    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->g:Z

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    sget-boolean v7, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->r:Z

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->shadeFinder:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v8, Lcom/perfectcorp/perfectlib/Functionality;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v7, v6, v8, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_1
    sget-boolean v7, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->s:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->skincare:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v8, Lcom/perfectcorp/perfectlib/Functionality;->SKIN_CARE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v7, v6, v8, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->skincareHD:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v8, Lcom/perfectcorp/perfectlib/Functionality;->SKIN_CARE_HD:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v7, v6, v8, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_2
    sget-boolean v7, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->q:Z

    if-eqz v7, :cond_14

    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v7, v7, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    if-nez v7, :cond_3

    sget-object v7, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v7, v7, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->makeup:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v8, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v7, v6, v8, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_4
    sget-object v7, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->g:Z

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->h:Z

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->r:Z

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->g:Z

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->h:Z

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->r:Z

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    sget-object v8, Lcom/perfectcorp/perfectlib/Functionality;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v2, v1, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v3, v5, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    sget-object v5, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v3, v5, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    :cond_5
    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    if-nez v3, :cond_6

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->hairColor:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->HAIR_COLOR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v5, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_7
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->HAIR_COLOR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    :cond_8
    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->funSticker:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->FUN_STICKER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v5, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_9
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->FUN_STICKER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    :cond_a
    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->reshape:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->RESHAPE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v5, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_b
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->RESHAPE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    :cond_c
    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->eyewear:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v5, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_d
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    :cond_e
    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->eyewear3D:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v5, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_f
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    :cond_10
    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->earring:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->EARRINGS:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v5, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_11
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->EARRINGS:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    :cond_12
    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->background:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->BACKGROUND:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v5, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_13
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->BACKGROUND:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    :cond_14
    sget-boolean v3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->y:Z

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->necklace:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->NECKLACE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v4, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_15
    sget-boolean v3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->u:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->aiFaceAnalyzer:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->FACE_ATTRIBUTE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v4, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_16
    sget-boolean v3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->v:Z

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->nail:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->NAIL:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v4, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->ring:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->RING:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v4, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->watch:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->WATCH:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v4, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->bracelet:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->BRACELET:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v4, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->stacking:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->JEWELRY:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v4, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_17
    sget-boolean v3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->x:Z

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->hairStyle:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->HAIR_STYLIST:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v3, v6, v4, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_18
    sget-boolean v3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->w:Z

    if-eqz v3, :cond_19

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;->tutorial:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->TUTORIAL:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-static {v0, v6, v3, p0}, Lcom/perfectcorp/perfectlib/PerfectLib;->b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V

    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[getAvailableFunctionalities] effectParams="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[getAvailableFunctionalities] photoMakeupParams="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->q(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    goto :goto_3

    :cond_1a
    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->r:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b
    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->s:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->SKIN_CARE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->SKIN_CARE_HD:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1c
    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->q:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    if-nez v0, :cond_1e

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    if-eqz v0, :cond_1d

    goto :goto_1

    :cond_1d
    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {v2, v1, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v3, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iput-boolean v3, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    goto :goto_2

    :cond_1e
    :goto_1
    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_2
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    if-nez v0, :cond_20

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    if-eqz v0, :cond_21

    :cond_20
    sget-object v0, Lcom/perfectcorp/perfectlib/Functionality;->HAIR_COLOR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->q(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_1
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->i:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "setPreviewMode start. isEnable="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    const-string v5, "ENABLE_PREVIEW_MODE"

    invoke-virtual {v0, v5, v4}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, p0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setPreviewMode (unchanged) end. isEnable="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    goto/16 :goto_4

    :cond_22
    new-instance v0, La8;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, La8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Ltg0;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, Ltg0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, La8;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, La8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Ltg0;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ltg0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/m3;

    invoke-direct {v0, v4}, Lcom/perfectcorp/perfectlib/m3;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Ltg0;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ltg0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/m3;

    invoke-direct {v0, v3}, Lcom/perfectcorp/perfectlib/m3;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Ltg0;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ltg0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, La8;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, La8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Ltg0;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ltg0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lin0;

    invoke-direct {v0, p0, v4}, Lin0;-><init>(ZI)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lin0;

    invoke-direct {v1, p0, v3}, Lin0;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    :goto_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
