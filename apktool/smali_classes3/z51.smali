.class public final synthetic Lz51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/VtoObject$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V
    .locals 0

    iput p2, p0, Lz51;->a:I

    iput-object p1, p0, Lz51;->b:Lcom/perfectcorp/perfectlib/VtoObject$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lz51;->a:I

    const-string v2, "VtoPalette$PaletteMajor"

    const-string v3, "VtoPalette$SubPalette"

    const-string v4, "VtoPattern$PaletteMajor"

    const-string v5, "VtoPattern$PatternMajor"

    const-string v6, "VtoPattern$SubPalette"

    const-string v7, "VtoDetail$PaletteMajor"

    const-string v8, "VtoDetailPatternEarrings"

    const-string v9, "[getPatterns] onSuccess. size="

    const-string v10, "[getPatterns] failed."

    const-string v11, "[getPatterns] task canceled."

    const-string v12, "[getPalettes] onSuccess. size="

    const-string v13, "[getPalettes] failed."

    const-string v14, "[getPalettes] task canceled."

    const/4 v15, 0x3

    iget-object v0, v0, Lz51;->b:Lcom/perfectcorp/perfectlib/VtoObject$Callback;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_0

    invoke-static {v6, v14, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v6, v13, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v15, v6}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_1

    invoke-static {v5, v14, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {v5, v13, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v15, v5}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_2

    invoke-static {v4, v14, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-static {v4, v13, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v15, v4}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_3

    invoke-static {v3, v11, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-static {v3, v10, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v15, v3}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v3, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v3, :cond_4

    invoke-static {v2, v11, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-static {v2, v10, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v15, v2}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_5

    const-string v0, "[getWearingStyles] task canceled."

    invoke-static {v8, v0, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    const-string v2, "[getWearingStyles] failed."

    invoke-static {v8, v2, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_5
    return-void

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getWearingStyles] onSuccess. size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v15, v8}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_6

    invoke-static {v8, v11, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-static {v8, v10, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :pswitch_c
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v15, v8}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_7

    invoke-static {v7, v11, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    invoke-static {v7, v10, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_7
    return-void

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v15, v7}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_f
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    instance-of v2, v1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-eqz v2, :cond_8

    invoke-static {v7, v14, v1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_8
    invoke-static {v7, v13, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_8
    return-void

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v15, v7}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/perfectcorp/perfectlib/VtoObject$Callback;->onSuccess(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
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
