.class Lrx/internal/operators/OperatorDelay$1$3;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelay$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDelay$1;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelay$1;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$3;, "Lrx/internal/operators/OperatorDelay$1.3;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay$1$3;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorDelay$1$3;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$3;, "Lrx/internal/operators/OperatorDelay$1.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$3;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    if-nez v0, :cond_f

    .line 88
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$3;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDelay$1;->val$child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorDelay$1$3;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 90
    :cond_f
    return-void
.end method
