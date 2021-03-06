.class final Lrx/subjects/ReplaySubject$TimeEvictionPolicy;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$EvictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeEvictionPolicy"
.end annotation


# instance fields
.field final maxAgeMillis:J

.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(JLrx/Scheduler;)V
    .registers 5
    .param p1, "maxAgeMillis"    # J
    .param p3, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput-wide p1, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->maxAgeMillis:J

    .line 896
    iput-object p3, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->scheduler:Lrx/Scheduler;

    .line 897
    return-void
.end method


# virtual methods
.method public evict(Lrx/subjects/ReplaySubject$NodeList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 901
    .local p1, "t1":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->now()J

    move-result-wide v2

    .line 902
    .local v2, "now":J
    :goto_6
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 903
    iget-object v1, p1, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v0, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 904
    .local v0, "n":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->test(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 905
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$NodeList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 910
    .end local v0    # "n":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :cond_1c
    return-void
.end method

.method public evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, "t1":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->now()J

    move-result-wide v2

    .line 915
    .local v2, "now":J
    :goto_6
    iget v1, p1, Lrx/subjects/ReplaySubject$NodeList;->size:I

    const/4 v4, 0x1

    if-le v1, v4, :cond_1b

    .line 916
    iget-object v1, p1, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v0, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 917
    .local v0, "n":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->test(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 918
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$NodeList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 923
    .end local v0    # "n":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :cond_1b
    return-void
.end method

.method public test(Ljava/lang/Object;J)Z
    .registers 10
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "now"    # J

    .prologue
    .line 927
    move-object v0, p1

    check-cast v0, Lrx/schedulers/Timestamped;

    .line 928
    .local v0, "ts":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    invoke-virtual {v0}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->maxAgeMillis:J

    sub-long v4, p2, v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method
