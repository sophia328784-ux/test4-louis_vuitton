.class public final synthetic Llh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;


# direct methods
.method public synthetic constructor <init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;I)V
    .locals 0

    iput p2, p0, Llh0;->b:I

    iput-object p1, p0, Llh0;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;)Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;
    .locals 2

    iget v0, p0, Llh0;->b:I

    const-string v1, "all"

    iget-object p0, p0, Llh0;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->b:Z

    iget-object v0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    iput-boolean p0, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->k:Z

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->b:Z

    iget-object v0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    iput-boolean p0, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->k:Z

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
