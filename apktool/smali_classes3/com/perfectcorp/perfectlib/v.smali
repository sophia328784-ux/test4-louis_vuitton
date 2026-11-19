.class public final synthetic Lcom/perfectcorp/perfectlib/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/v;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/perfectcorp/perfectlib/v;->a:I

    const-string v1, "PerfectLib"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/v;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$Type;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[syncServerByType] end. type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TagHandler"

    invoke-static {v5, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    const-class v0, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/common/utility/EventPublisher;->c(Ljava/lang/Class;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/Configuration;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v7, "6f59ea6b-0af4-4c36-948c-965dc8a7c80e"

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "8db48cd5-5537-44a2-9280-347994063ac1"

    const-string v10, "a5d92b49-599e-4647-94bb-0cb5c4b39b54"

    if-nez v8, :cond_1

    invoke-virtual {v6, v10, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6, v9, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v2

    :goto_1
    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->g:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v8, "8a277eed-7bf6-49bb-943a-77c55b7f92b2"

    invoke-virtual {v6, v8, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6, v10, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6, v9, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    :goto_3
    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->h:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v11, "c9d75858-7ec4-4e98-8fd6-088acae7658c"

    invoke-virtual {v6, v11, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->r:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v12, "8c533e4d-8dee-472b-88ae-23958087a236"

    invoke-virtual {v6, v12, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v12, "5392ce5e-fb36-4c65-864a-45e27399802f"

    invoke-virtual {v6, v12, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v12, "770cb509-08c2-4004-ad1c-fe00050c5155"

    invoke-virtual {v6, v12, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    invoke-virtual {v6, v10, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v12, "db6c20d6-9772-440a-83b5-7c7cd45c22d6"

    invoke-virtual {v6, v12, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v12, "b354a7ba-9828-44bb-b6b8-e529b1b1a2da"

    invoke-virtual {v6, v12, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v12, "05982a41-e607-43af-a1da-9c9ac30681f8"

    invoke-virtual {v6, v12, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v12, "163a3804-45c7-49fa-8fb4-e12c2fe1f99f"

    invoke-virtual {v6, v12, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v12, "5ba67514-b41e-44ad-9f1b-ef4d16a4bef2"

    invoke-virtual {v6, v12, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->s:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6, v10, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6, v9, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v2

    :goto_5
    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->g:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v10, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v9, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    move v6, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v6, v2

    :goto_7
    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->h:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    invoke-virtual {v6, v11, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->r:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v7, "a04adc79-a0ab-4726-bee8-4dc857a8672e"

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v7, "089d2498-8bf1-411d-bc73-66cd9262897d"

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    invoke-virtual {v6, v9, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v7, "0e409f66-17cd-4bcd-99f9-f0faaf885790"

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v7, "f3162186-d3c4-465b-af95-4da31cb1851a"

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v7, "5d60e3a7-a146-4cef-bab8-6a00860c29de"

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v7, "93b923b7-81da-4336-a0fb-3d5a1b7a00ba"

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    const-string v7, "fccc5881-4bd9-41cf-b821-42a70a38c352"

    invoke-virtual {v6, v7, v2}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->s:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "effectParams="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "photoMakeupParams="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/HandFunctionalities;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/perfectcorp/perfectlib/HandFunctionalities;-><init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "handFunctionalities="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/perfectcorp/perfectlib/PerfectLib;->c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;-><init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->accessoryFunctionalities:Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "accessoryFunctionalities="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/perfectcorp/perfectlib/PerfectLib;->accessoryFunctionalities:Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    const-string v6, "8831e33f-707f-414a-b7f8-e1024c0b332b"

    invoke-virtual {v0, v6, v4}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    const-string v0, ""

    :goto_8
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;

    invoke-virtual {v4, v0, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;

    if-eqz v0, :cond_d

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;->collectData:Ljava/util/List;

    if-eqz v4, :cond_9

    const-string v6, "consoleReport"

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v2

    goto :goto_9

    :cond_9
    move v4, v3

    :goto_9
    iget v6, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;->countlyEventQueueSize:I

    if-lez v6, :cond_a

    goto :goto_a

    :cond_a
    const/4 v6, -0x1

    :goto_a
    sput v6, Lcom/perfectcorp/uma/countly/d;->j:I

    const-string v6, "sendAfterUserConsent"

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;->collectData_consoleReport:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-boolean v7, p0, Lcom/perfectcorp/perfectlib/Configuration;->j:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "user accept to log events="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->j:Z

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_c

    if-eqz v4, :cond_b

    if-eqz v7, :cond_b

    goto :goto_b

    :cond_b
    move v2, v3

    goto :goto_b

    :cond_c
    move v2, v4

    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "countlyEventQueueSize="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;->countlyEventQueueSize:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget p0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;->countlyEventQueueSize:I

    sput p0, Lcom/perfectcorp/uma/countly/d;->j:I

    :cond_d
    sput-boolean v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->c:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "needToLogEvents="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib$State;->RELEASED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    new-instance v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    new-instance v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    new-instance v0, Lcom/perfectcorp/perfectlib/HandFunctionalities;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/HandFunctionalities;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->f:Ljava/util/Set;

    sget-object v2, Lcom/perfectcorp/perfectlib/Configuration;->m:Lcom/perfectcorp/perfectlib/Configuration;

    sput-object v2, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    sput-object v4, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->e:Ljava/lang/String;

    sput-boolean v3, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->O:Z

    sput-boolean v3, Lcom/perfectcorp/perfectlib/developermode/WatermarkBlender;->a:Z

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    const-string v0, "SDK released."

    invoke-static {v5, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/logger/j;->d()V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, "MakeupCamInternal"

    const-string v1, "[applyEffectIds] success"

    invoke-static {v5, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v4}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v4, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[updateCacheFirstThenUpdateContent] start update rows.size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CacheStrategyContentUpdater"

    invoke-static {v5, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;

    :try_start_0
    iget-object v6, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    sget-object v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    if-ne v6, v7, :cond_e

    sget-object v6, Lcom/perfectcorp/perfectlib/CacheStrategyContentUpdater$1;->a:[I

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v2, :cond_11

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    if-ne v6, v5, :cond_f

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/SkuCacheStrategyHelper;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;)V

    goto :goto_c

    :catchall_0
    move-exception v6

    goto :goto_d

    :cond_f
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "type \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\' is not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_10
    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/SkuCacheStrategyHelper;->b(Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    goto :goto_c

    :cond_11
    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$LookCacheFirstThenUpdateStrategy;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :goto_d
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[updateCacheFirstThenUpdateContent] Error occurred while updating data. row="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v6}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_12
    const-string p0, "[updateCacheFirstThenUpdateContent] update finished"

    invoke-static {v5, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v0, "CacheStrategyForCacheFirstThenUpdate"

    invoke-virtual {p0, v0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string p0, "[updateCacheFirstThenUpdateContent] CacheStrategyForCacheFirstThenUpdateDao.clear() done"

    invoke-static {v5, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    const-string v1, "CacheStrategyForCacheFirstThenUpdateDao"

    const-string v2, "clear"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
