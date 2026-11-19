.class public abstract Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
    }
.end annotation


# static fields
.field public static final CAPS_WILDCARD:Ljava/lang/String; = "*"

.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;)V
    .locals 10

    const/4 v0, 0x0

    .line 167
    new-array v9, v0, [Lorg/teleal/cling/support/model/SortCriterion;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v5, "*"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V
    .locals 2

    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "Browse"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    sget-object p1, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating browse action for object ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string v0, "ObjectID"

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/BrowseFlag;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BrowseFlag"

    invoke-virtual {p1, p2, p3}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    const-string p2, "Filter"

    invoke-virtual {p1, p4, p2}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    new-instance p2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {p2, p5, p6}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const-string p3, "StartingIndex"

    invoke-virtual {p1, p2, p3}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p1

    new-instance p2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    if-nez p7, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->getDefaultMaxResults()J

    move-result-wide p3

    goto :goto_0

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :goto_0
    invoke-direct {p2, p3, p4}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const-string p3, "RequestedCount"

    invoke-virtual {p1, p2, p3}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p0

    if-nez p8, :cond_1

    const-string p1, ""

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length p2, p8

    const/4 p3, 0x0

    :goto_1
    const-string p4, ","

    if-ge p3, p2, :cond_2

    aget-object p5, p8, p3

    invoke-virtual {p5}, Lorg/teleal/cling/support/model/SortCriterion;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p2, "SortCriteria"

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultMaxResults()J
    .locals 2

    const-wide/16 v0, 0x3e7

    return-wide v0
.end method

.method public abstract received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
.end method

.method public receivedRaw(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/BrowseResult;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public run()V
    .locals 1

    sget-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->LOADING:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V

    invoke-super {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->run()V

    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 5

    sget-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    const-string v1, "Successful browse action, reading output argument values"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/support/model/BrowseResult;

    const-string v1, "Result"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/action/ActionInvocation;->a(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v1

    iget-object v1, v1, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NumberReturned"

    invoke-virtual {p1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->a(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v2

    iget-object v2, v2, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-string v3, "TotalMatches"

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->a(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v3

    iget-object v3, v3, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v3, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-string v4, "UpdateID"

    invoke-virtual {p1, v4}, Lorg/teleal/cling/model/action/ActionInvocation;->a(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v4

    iget-object v4, v4, Lorg/teleal/cling/model/VariableValue;->b:Ljava/lang/Object;

    check-cast v4, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->receivedRaw(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/BrowseResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/teleal/cling/support/model/BrowseResult;->b:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iget-wide v1, v1, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v0, v0, Lorg/teleal/cling/support/model/BrowseResult;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->d(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V

    sget-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->OK:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v3, "Can\'t parse DIDL XML response: "

    invoke-static {v3, v0}, Lcj;->j(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p1, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-void

    :cond_0
    new-instance v0, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/DIDLContent;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V

    sget-object p1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->NO_CONTENT:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V

    return-void
.end method

.method public abstract updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
.end method
