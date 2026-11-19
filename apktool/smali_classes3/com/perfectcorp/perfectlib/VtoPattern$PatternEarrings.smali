.class final Lcom/perfectcorp/perfectlib/VtoPattern$PatternEarrings;
.super Lcom/perfectcorp/perfectlib/VtoPattern;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternEarrings"
.end annotation


# virtual methods
.method public final getPalettes(Lcom/perfectcorp/perfectlib/VtoObject$Callback;)V
    .locals 2

    const-string p0, "callback can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "[getPalettes] start"

    const/4 v0, 0x3

    const-string v1, "VtoPatternPatternEarrings"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ly51;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Ly51;-><init>(Lcom/perfectcorp/perfectlib/VtoObject$Callback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
