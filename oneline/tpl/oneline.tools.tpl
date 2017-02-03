<!-- BEGIN: MAIN -->
			<script type="text/javascript">
				$(function() {
					$('select[name^=oneline_date]').addClass('form-control').css('display','inline-block');
				});
			</script>
			
			<div class="row-fluid">
				<div class="col-md-12">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
					<div class="block">
						<h5><i class="icon-cogs"></i> {PHP.L.info_name}</h5>
						<div class="wrapper">

							<form action="{ONELINE_UPDURL}" method="post">
								
								<div style="margin-bottom:15px; overflow:hidden;">
									<span class="btn btn-default pull-left" disabled="disabled" style="font-size:13px; font-weight:600; border-color:transparent;">Отфильтровать записи:</span>
									{ONELINE_FILTER_SELECT}
									<button type="submit" class="btn btn-primary" style="line-height:20px; margin-left:10px; float:left;"><i class="fa fa-filter"></i> {PHP.L.Filter}</button>
								</div>
								
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>ID</th>
<!-- IF {PHP.cfg.plugin.oneline.display_date} -->
											<th>{PHP.L.Date}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price} -->
											<th>{PHP.L.oneline_price}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_text} -->
											<th>{PHP.L.Text}</th>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_link} -->
											<th>{PHP.L.Link}</th>
<!-- ENDIF -->
											<th>{PHP.L.Section}</th>
											<th>{PHP.L.Action}</th>
										</tr>
									</thead>
									<tbody>
<!-- BEGIN: ONELINE_ROW -->
										<tr>
											<td class="centerall">{ONELINE_ID}.</td>
<!-- IF {PHP.cfg.plugin.oneline.display_date} -->
											<td class="centerall">{ONELINE_DATE}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_price} -->
											<td>{ONELINE_PRICE}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_text} -->
											<td>{ONELINE_TEXT}</td>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_link} -->
											<td>{ONELINE_LINK}</td>
<!-- ENDIF -->
											<td>{ONELINE_SECTION}</td>
											<td class="centerall action">
												<div class="btn-group">
<!-- IF {PHP.cfg.plugin.oneline.showopen} -->
													<a title="{PHP.L.Open}" href="{ONELINE_SECTION_RAW|cot_url('page','c=$this')}" target="_blank" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}">
														<i class="fa fa-folder-open-o"></i> {PHP.L.Open}
													</a>
<!-- ENDIF -->
													<a title="{PHP.L.Delete}" href="{ONELINE_DELURL}" class="btn btn-default btn-{PHP.R.admin-config-buttonsize2}">
														<i class="fa fa-times"></i> {PHP.L.Delete}
													</a>
												</div>
											</td>
										</tr>
<!-- END: ONELINE_ROW -->
<!-- BEGIN: ONELINE_NOROW -->
										<tr>
											<td colspan="7">{PHP.L.None}</td>
										</tr>
<!-- END: ONELINE_NOROW -->
										<tr>
											<td colspan="7" class="valid">
												<button type="submit" class="btn btn-primary"><i class="fa fa-refresh"></i> {PHP.L.Update}</button>
											</td>
										</tr>
									</tbody>
								</table>
							</form>
							
							<p class="text-center mb20">{PHP.L.Total}: {ONELINE_TOTAL}, <span class="lower">{PHP.L.Onpage}:</span> {ONELINE_ONPAGE}</p>
<!-- IF {ONELINE_PAGINATION} -->
							<div class="text-{PHP.R.admin-config-pagialign}">
								<ul class="pagination pagination-{PHP.R.admin-config-pagisize}">{ONELINE_PREV}{ONELINE_PAGINATION}{ONELINE_NEXT}</ul>
							</div>
<!-- ENDIF -->
							
						</div>
					</div>
					<div class="block">
						<h5>{PHP.L.Add}</h5>
						<div class="wrapper">
							<form action="{ONELINE_ADDURL}" method="post" name="pageform">
								<table class="table table-bordered">
									<tr>
										<td>{PHP.L.Date}</td>
										<td>{ONELINE_ADDDATE}</td>
									</tr>
<!-- IF {PHP.cfg.plugin.oneline.display_price} -->
									<tr>
										<td>{PHP.L.oneline_price}</td>
										<td>{ONELINE_ADDPRICE}</td>
									</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_text} -->
									<tr>
										<td>{PHP.L.Text}</td>
										<td>{ONELINE_ADDTEXT}</td>
									</tr>
<!-- ENDIF -->
<!-- IF {PHP.cfg.plugin.oneline.display_link} -->
									<tr>
										<td>{PHP.L.Link}</td>
										<td>{ONELINE_ADDLINK}</td>
									</tr>
<!-- ENDIF -->
									<tr>
										<td>{PHP.L.Section}</td>
										<td>{ONELINE_ADDSECTION}</td>
									</tr>
									<tr>
										<td colspan="2" class="valid">
											<button type="submit" name="rpaste" value="ok" class="btn btn-primary"><i class="fa fa-plus"></i> {PHP.L.Add}</button>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
<!-- END: MAIN -->